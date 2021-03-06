(LIT "Drag-and-drop support for Tkinter.\n\nThis is very preliminary.  I currently only support dnd *within* one\napplication, between different windows (or within the same window).\n\nI an trying to make this as generic as possible -- not dependent on\nthe use of a particular widget or icon type, etc.  I also hope that\nthis will work with Pmw.\n\nTo enable an object to be dragged, you must create an event binding\nfor it that starts the drag-and-drop process. Typically, you should\nbind <ButtonPress> to a callback function that you write. The function\nshould call Tkdnd.dnd_start(source, event), where 'source' is the\nobject to be dragged, and 'event' is the event that invoked the call\n(the argument to your callback function).  Even though this is a class\ninstantiation, the returned instance should not be stored -- it will\nbe kept alive automatically for the duration of the drag-and-drop.\n\nWhen a drag-and-drop is already in process for the Tk interpreter, the\ncall is *ignored*; this normally averts starting multiple simultaneous\ndnd processes, e.g. because different button callbacks all\ndnd_start().\n\nThe object is *not* necessarily a widget -- it can be any\napplication-specific object that is meaningful to potential\ndrag-and-drop targets.\n\nPotential drag-and-drop targets are discovered as follows.  Whenever\nthe mouse moves, and at the start and end of a drag-and-drop move, the\nTk widget directly under the mouse is inspected.  This is the target\nwidget (not to be confused with the target object, yet to be\ndetermined).  If there is no target widget, there is no dnd target\nobject.  If there is a target widget, and it has an attribute\ndnd_accept, this should be a function (or any callable object).  The\nfunction is called as dnd_accept(source, event), where 'source' is the\nobject being dragged (the object passed to dnd_start() above), and\n'event' is the most recent event object (generally a <Motion> event;\nit can also be <ButtonPress> or <ButtonRelease>).  If the dnd_accept()\nfunction returns something other than None, this is the new dnd target\nobject.  If dnd_accept() returns None, or if the target widget has no\ndnd_accept attribute, the target widget's parent is considered as the\ntarget widget, and the search for a target object is repeated from\nthere.  If necessary, the search is repeated all the way up to the\nroot widget.  If none of the target widgets can produce a target\nobject, there is no target object (the target object is None).\n\nThe target object thus produced, if any, is called the new target\nobject.  It is compared with the old target object (or None, if there\nwas no old target widget).  There are several cases ('source' is the\nsource object, and 'event' is the most recent event object):\n\n- Both the old and new target objects are None.  Nothing happens.\n\n- The old and new target objects are the same object.  Its method\ndnd_motion(source, event) is called.\n\n- The old target object was None, and the new target object is not\nNone.  The new target object's method dnd_enter(source, event) is\ncalled.\n\n- The new target object is None, and the old target object is not\nNone.  The old target object's method dnd_leave(source, event) is\ncalled.\n\n- The old and new target objects differ and neither is None.  The old\ntarget object's method dnd_leave(source, event), and then the new\ntarget object's method dnd_enter(source, event) is called.\n\nOnce this is done, the new target object replaces the old one, and the\nTk mainloop proceeds.  The return value of the methods mentioned above\nis ignored; if they raise an exception, the normal exception handling\nmechanisms take over.\n\nThe drag-and-drop processes can end in two ways: a final target object\nis selected, or no final target object is selected.  When a final\ntarget object is selected, it will always have been notified of the\npotential drop by a call to its dnd_enter() method, as described\nabove, and possibly one or more calls to its dnd_motion() method; its\ndnd_leave() method has not been called since the last call to\ndnd_enter().  The target is notified of the drop by a call to its\nmethod dnd_commit(source, event).\n\nIf no final target object is selected, and there was an old target\nobject, its dnd_leave(source, event) method is called to complete the\ndnd sequence.\n\nFinally, the source object is notified that the drag-and-drop process\nis over, by a call to source.dnd_end(target, event), specifying either\nthe selected target object, or None if no target object was selected.\nThe source object can use this to implement the commit action; this is\nsometimes simpler than to do it in the target's dnd_commit().  The\ntarget's dnd_commit() method could then simply be aliased to\ndnd_leave().\n\nAt any time during a dnd sequence, the application can cancel the\nsequence by calling the cancel() method on the object returned by\ndnd_start().  This will call dnd_leave() if a target is currently\nactive; it will never call dnd_commit().\n\n")
(NEWLINE)
(KEYWORD import)
(ID "tkinter")
(NEWLINE)
(KEYWORD def)
(ID "dnd_start")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(ID "DndHandler")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "h")
(PUNCT ".")
(ID "root")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "h")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "DndHandler")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "event")
(PUNCT ".")
(ID "num")
(PUNCT ">")
(LIT 5)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "root")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "widget")
(PUNCT ".")
(ID "_root")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT ".")
(ID "__dnd")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT ".")
(ID "__dnd")
(PUNCT "=")
(ID "self")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "root")
(PUNCT "=")
(ID "root")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "source")
(PUNCT "=")
(ID "source")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "target")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "initial_button")
(PUNCT "=")
(ID "button")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "num")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "initial_widget")
(PUNCT "=")
(ID "widget")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "widget")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "release_pattern")
(PUNCT "=")
(LIT "<B%d-ButtonRelease-%d>")
(PUNCT "%")
(PUNCT "(")
(ID "button")
(PUNCT ",")
(ID "button")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "save_cursor")
(PUNCT "=")
(ID "widget")
(PUNCT "[")
(LIT "cursor")
(PUNCT "]")
(KEYWORD or)
(LIT "")
(NEWLINE)
(ID "widget")
(PUNCT ".")
(ID "bind")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "release_pattern")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "on_release")
(PUNCT ")")
(NEWLINE)
(ID "widget")
(PUNCT ".")
(ID "bind")
(PUNCT "(")
(LIT "<Motion>")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "on_motion")
(PUNCT ")")
(NEWLINE)
(ID "widget")
(PUNCT "[")
(LIT "cursor")
(PUNCT "]")
(PUNCT "=")
(LIT "hand2")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__del__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "root")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "root")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "root")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "root")
(PUNCT ".")
(ID "__dnd")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "on_motion")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "x_root")
(PUNCT ",")
(ID "event")
(PUNCT ".")
(ID "y_root")
(NEWLINE)
(ID "target_widget")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "initial_widget")
(PUNCT ".")
(ID "winfo_containing")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT ")")
(NEWLINE)
(ID "source")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "source")
(NEWLINE)
(ID "new_target")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD while)
(ID "target_widget")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "attr")
(PUNCT "=")
(ID "target_widget")
(PUNCT ".")
(ID "dnd_accept")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new_target")
(PUNCT "=")
(ID "attr")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "new_target")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "target_widget")
(PUNCT "=")
(ID "target_widget")
(PUNCT ".")
(ID "master")
(NEWLINE)
(DEDENT)
(ID "old_target")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "target")
(NEWLINE)
(KEYWORD if)
(ID "old_target")
(KEYWORD is)
(ID "new_target")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "old_target")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "old_target")
(PUNCT ".")
(ID "dnd_motion")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "old_target")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "target")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "old_target")
(PUNCT ".")
(ID "dnd_leave")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "new_target")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new_target")
(PUNCT ".")
(ID "dnd_enter")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "target")
(PUNCT "=")
(ID "new_target")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "on_release")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "finish")
(PUNCT "(")
(ID "event")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "cancel")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "finish")
(PUNCT "(")
(ID "event")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "finish")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ",")
(ID "commit")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "target")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "target")
(NEWLINE)
(ID "source")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "source")
(NEWLINE)
(ID "widget")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "initial_widget")
(NEWLINE)
(ID "root")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "root")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "root")
(PUNCT ".")
(ID "__dnd")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "initial_widget")
(PUNCT ".")
(ID "unbind")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "release_pattern")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "initial_widget")
(PUNCT ".")
(ID "unbind")
(PUNCT "(")
(LIT "<Motion>")
(PUNCT ")")
(NEWLINE)
(ID "widget")
(PUNCT "[")
(LIT "cursor")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "save_cursor")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "target")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "source")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "initial_widget")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "root")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "target")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "commit")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "target")
(PUNCT ".")
(ID "dnd_commit")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "target")
(PUNCT ".")
(ID "dnd_leave")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT ".")
(ID "dnd_end")
(PUNCT "(")
(ID "target")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Icon")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "=")
(ID "name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "attach")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "canvas")
(PUNCT ",")
(ID "x")
(PUNCT "=")
(LIT 10)
(PUNCT ",")
(ID "y")
(PUNCT "=")
(LIT 10)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "canvas")
(KEYWORD is)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "coords")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "detach")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "canvas")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "label")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Label")
(PUNCT "(")
(ID "canvas")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 2)
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(LIT "raised")
(PUNCT ")")
(NEWLINE)
(ID "id")
(PUNCT "=")
(ID "canvas")
(PUNCT ".")
(ID "create_window")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT ",")
(ID "window")
(PUNCT "=")
(ID "label")
(PUNCT ",")
(ID "anchor")
(PUNCT "=")
(LIT "nw")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT "=")
(ID "canvas")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "=")
(ID "label")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT "=")
(ID "id")
(NEWLINE)
(ID "label")
(PUNCT ".")
(ID "bind")
(PUNCT "(")
(LIT "<ButtonPress>")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "press")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "detach")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "canvas")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "canvas")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "canvas")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "id")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "id")
(NEWLINE)
(ID "label")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "label")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "canvas")
(PUNCT ".")
(ID "delete")
(PUNCT "(")
(ID "id")
(PUNCT ")")
(NEWLINE)
(ID "label")
(PUNCT ".")
(ID "destroy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "press")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "dnd_start")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "x_off")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "x")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "y_off")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "y")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "x_orig")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "y_orig")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "coords")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "move")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "where")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "coords")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "putback")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "coords")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "id")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "x_orig")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "y_orig")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "where")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "canvas")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x_org")
(PUNCT "=")
(ID "canvas")
(PUNCT ".")
(ID "winfo_rootx")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "y_org")
(PUNCT "=")
(ID "canvas")
(PUNCT ".")
(ID "winfo_rooty")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "x")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "x_root")
(PUNCT "-")
(ID "x_org")
(NEWLINE)
(ID "y")
(PUNCT "=")
(ID "event")
(PUNCT ".")
(ID "y_root")
(PUNCT "-")
(ID "y_org")
(NEWLINE)
(KEYWORD return)
(ID "x")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "x_off")
(PUNCT ",")
(ID "y")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "y_off")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dnd_end")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "target")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Tester")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "root")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "top")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Toplevel")
(PUNCT "(")
(ID "root")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Canvas")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "top")
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 100)
(PUNCT ",")
(ID "height")
(PUNCT "=")
(LIT 100)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "fill")
(PUNCT "=")
(LIT "both")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "dnd_accept")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "dnd_accept")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dnd_accept")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dnd_enter")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "focus_set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "where")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(ID "x1")
(PUNCT ",")
(ID "y1")
(PUNCT ",")
(ID "x2")
(PUNCT ",")
(ID "y2")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "bbox")
(PUNCT "(")
(ID "source")
(PUNCT ".")
(ID "id")
(PUNCT ")")
(NEWLINE)
(ID "dx")
(PUNCT ",")
(ID "dy")
(PUNCT "=")
(ID "x2")
(PUNCT "-")
(ID "x1")
(PUNCT ",")
(ID "y2")
(PUNCT "-")
(ID "y1")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "dndid")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "create_rectangle")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT ",")
(ID "x")
(PUNCT "+")
(ID "dx")
(PUNCT ",")
(ID "y")
(PUNCT "+")
(ID "dy")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "dnd_motion")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dnd_motion")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "where")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(ID "x1")
(PUNCT ",")
(ID "y1")
(PUNCT ",")
(ID "x2")
(PUNCT ",")
(ID "y2")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "bbox")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "dndid")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "move")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "dndid")
(PUNCT ",")
(ID "x")
(PUNCT "-")
(ID "x1")
(PUNCT ",")
(ID "y")
(PUNCT "-")
(ID "y1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dnd_leave")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "top")
(PUNCT ".")
(ID "focus_set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ".")
(ID "delete")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "dndid")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "dndid")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dnd_commit")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "dnd_leave")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "where")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "attach")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "canvas")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "test")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Tk")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "root")
(PUNCT ".")
(ID "geometry")
(PUNCT "(")
(LIT "+1+1")
(PUNCT ")")
(NEWLINE)
(ID "tkinter")
(PUNCT ".")
(ID "Button")
(PUNCT "(")
(ID "command")
(PUNCT "=")
(ID "root")
(PUNCT ".")
(ID "quit")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Quit")
(PUNCT ")")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "t1")
(PUNCT "=")
(ID "Tester")
(PUNCT "(")
(ID "root")
(PUNCT ")")
(NEWLINE)
(ID "t1")
(PUNCT ".")
(ID "top")
(PUNCT ".")
(ID "geometry")
(PUNCT "(")
(LIT "+1+60")
(PUNCT ")")
(NEWLINE)
(ID "t2")
(PUNCT "=")
(ID "Tester")
(PUNCT "(")
(ID "root")
(PUNCT ")")
(NEWLINE)
(ID "t2")
(PUNCT ".")
(ID "top")
(PUNCT ".")
(ID "geometry")
(PUNCT "(")
(LIT "+120+60")
(PUNCT ")")
(NEWLINE)
(ID "t3")
(PUNCT "=")
(ID "Tester")
(PUNCT "(")
(ID "root")
(PUNCT ")")
(NEWLINE)
(ID "t3")
(PUNCT ".")
(ID "top")
(PUNCT ".")
(ID "geometry")
(PUNCT "(")
(LIT "+240+60")
(PUNCT ")")
(NEWLINE)
(ID "i1")
(PUNCT "=")
(ID "Icon")
(PUNCT "(")
(LIT "ICON1")
(PUNCT ")")
(NEWLINE)
(ID "i2")
(PUNCT "=")
(ID "Icon")
(PUNCT "(")
(LIT "ICON2")
(PUNCT ")")
(NEWLINE)
(ID "i3")
(PUNCT "=")
(ID "Icon")
(PUNCT "(")
(LIT "ICON3")
(PUNCT ")")
(NEWLINE)
(ID "i1")
(PUNCT ".")
(ID "attach")
(PUNCT "(")
(ID "t1")
(PUNCT ".")
(ID "canvas")
(PUNCT ")")
(NEWLINE)
(ID "i2")
(PUNCT ".")
(ID "attach")
(PUNCT "(")
(ID "t2")
(PUNCT ".")
(ID "canvas")
(PUNCT ")")
(NEWLINE)
(ID "i3")
(PUNCT ".")
(ID "attach")
(PUNCT "(")
(ID "t3")
(PUNCT ".")
(ID "canvas")
(PUNCT ")")
(NEWLINE)
(ID "root")
(PUNCT ".")
(ID "mainloop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "test")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
