module jamc.server.gui;

import jamc.api.gui;
import jamc.api.renderer; 
import jamc.api.widgets.BaseWidget;
import jamc.api.widgets.IWidget;

class ServerGui : IGui
{
    override IRenderProxy getNewRenderProxy( IRenderProxy.IRenderable renderable )
    {
        assert( 0, "Server can't render anything, you dumb shit!" );
    }
    
    override @property IWidget mainPanel()
    {
        return null;
    }
    
    override @property void mainPanel( IWidget )
    {}
    
    override void draw()
    {}
}
