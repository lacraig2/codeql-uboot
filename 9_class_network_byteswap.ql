import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap() {
        exists(MacroInvocation mi | 
            mi.getMacro().getName() in ["nhotl","nntohll", "ntohs"] and this = mi.getExpr()
            )
    }
}

from NetworkByteSwap nbs
select nbs