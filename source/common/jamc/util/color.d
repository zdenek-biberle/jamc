module jamc.util.color;

import std.algorithm;

import jamc.util.vector;

struct Color( T, size_t dim )
{
    mixin VectorBase!( T, dim );
    
    void normalize()
    {
        foreach( e; data )
        {
            e = min( 1.0, max( e, 0.0 ) );
        }
    }
    
    Color normalized()
    {
        Color ret = this;
        ret.normalize();
        return ret;
    }
}

alias rgba = Color!( float, 4 );
alias rgb = Color!( float, 3 );
