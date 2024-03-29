module jamc.api.gui;

import jamc.api.renderer;
import jamc.api.widgets.IWidget;
import jamc.api.widgets.BaseWidget;
import jamc.util.gpu.renderer;

interface IGui
{
    IRenderProxy getNewRenderProxy( IRenderProxy.IRenderable renderable );
    
    @property IWidget mainPanel();
    @property void mainPanel( IWidget );
    
    void draw();
}
