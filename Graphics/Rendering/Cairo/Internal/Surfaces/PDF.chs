-----------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.Cairo.Internal.Surfaces.PDF
-- Copyright   :  (c) Paolo Martini 2005
-- License     :  BSD-style (see doc/COPYRIGHT)
--
-- Maintainer  :  p.martini@neuralnoise.com
-- Stability   :  experimental
-- Portability :  portable
--
-- Rendering PDF documents.
-----------------------------------------------------------------------------

module Graphics.Rendering.Cairo.Internal.Surfaces.PDF where

{#import Graphics.Rendering.Cairo.Types#}

import Foreign
import Foreign.C

#include <cairo/cairo-pdf.h>
{#context lib="cairo" prefix="cairo"#}

{#fun pdf_surface_create  as pdfSurfaceCreate { withCString* `FilePath', `Double', `Double' } -> `Surface' mkSurface*#}
{#fun pdf_surface_set_size as pdfSurfaceSetSize { withSurface* `Surface', `Double', `Double' } -> `()'#}

