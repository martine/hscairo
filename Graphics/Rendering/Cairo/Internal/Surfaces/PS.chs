-----------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.Cairo.Internal.Surfaces.PS
-- Copyright   :  (c) Paolo Martini 2005
-- License     :  BSD-style (see doc/COPYRIGHT)
--
-- Maintainer  :  p.martini@neuralnoise.com
-- Stability   :  experimental
-- Portability :  portable
--
-- Rendering PS documents.
-----------------------------------------------------------------------------

module Graphics.Rendering.Cairo.Internal.Surfaces.PS where

{#import Graphics.Rendering.Cairo.Types#}

import Foreign
import Foreign.C

#include <cairo/cairo-ps.h>
{#context lib="cairo" prefix="cairo"#}

{#fun ps_surface_create   as psSurfaceCreate { withCString* `FilePath', `Double', `Double' } -> `Surface' mkSurface*#}
{#fun ps_surface_set_size as psSurfaceSetSize { withSurface* `Surface', `Double', `Double' } -> `()'#}
