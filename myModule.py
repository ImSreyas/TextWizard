def isset(var):
    if var in locals() or var in globals():
        return True
    else:
        return False