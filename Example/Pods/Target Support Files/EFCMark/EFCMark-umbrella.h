#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "autolink.h"
#import "buffer.h"
#import "chunk.h"
#import "cmarkextensions_export.h"
#import "cmark_ctype.h"
#import "cmark_export.h"
#import "cmark_extension_api.h"
#import "cmark_version.h"
#import "config.h"
#import "core-extensions.h"
#import "entities.inc"
#import "ext_scanners.h"
#import "houdini.h"
#import "html.h"
#import "cmark.h"
#import "inlines.h"
#import "iterator.h"
#import "node.h"
#import "parser.h"
#import "plugin.h"
#import "references.h"
#import "registry.h"
#import "render.h"
#import "scanners.h"
#import "strikethrough.h"
#import "syntax_extension.h"
#import "table.h"
#import "tagfilter.h"
#import "utf8.h"

FOUNDATION_EXPORT double EFCMarkVersionNumber;
FOUNDATION_EXPORT const unsigned char EFCMarkVersionString[];

