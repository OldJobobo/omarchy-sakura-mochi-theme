# Sakura Mochi Design Language

## Core Idea

Sakura Mochi is a dark glass theme built around the tension between sweet pink light and cool green structure.

It should feel:

- lacquered
- plush
- nocturnal
- playful, but not sugary
- stylized, but still readable

The theme is not meant to be pastel-cute or neon-chaotic. Its identity comes from using pink as the emotional highlight and green as the balancing frame.

## Visual Voice

The voice of the theme is:

- pink for glow, focus, and bloom
- green for shape, restraint, and support
- near-black plum for depth
- soft translucency instead of flat solid panels
- rounded forms instead of hard industrial edges

If a surface becomes only pink, the theme loses balance.
If a surface becomes only green, the theme loses personality.
The theme works when pink and green are both present, but doing different jobs.

## Source Of Truth

`colors.toml` is the canonical palette source for this theme.

That means:

- every documented color value should match `colors.toml`
- derived CSS aliases and app-specific mappings should follow `colors.toml`, not invent parallel palette truth
- if a component needs translucency, gradients, or mixed states, those effects should still be built from the `colors.toml` palette
- when the palette changes, `colors.toml` should be updated first and the rest of the theme should be reconciled to it

## Palette Roles

All color choices in this theme should be authored with perceptual color reasoning in mind, using Oklab/Oklch as the design model even though the shipped files store hex values.

That means:

- perceived lightness should stay intentional across accents and support colors
- saturation changes should preserve role clarity instead of relying on arbitrary HSL-style tweaking
- pink and green should feel balanced by eye because their lightness and chroma were chosen perceptually, not because their raw hex values happen to look similar in a picker

### Core Neutrals

- Background: `#0b0d11` (`background`, `color0`)
- Deep structural green-black: `#4a5d46` (`color8`)
- Primary foreground pink: `#f0b7ca` (`foreground`, `color5`)

### Primary Accent System

- Primary focus pink: `#f23888` (`accent`, `active_border_color`, `selection_background`, `color1`)
- Primary foreground pink: `#f0b7ca` (`foreground`, `color5`)
- Soft living green: `#5aa15d` (`color2`)
- Bright electric green: `#67dd82` (`color4`)
- Secondary cool support green: `#6f9485` (`color6`)
- Bright support green: `#86bf86` (`color10`)
- Pale support cyan-green: `#8bb0a4` (`color14`)

### Supporting Light Tones

- Warm cream: `#d7be96` (`color3`)
- Bright cream: `#e6d3b4` (`color11`)
- Light shell pink: `#d8c6cc` (`color7`)
- Bright shell pink: `#ffd0dc` (`color13`)
- Bright white-pink: `#fff1f6` (`color15`)

### Semantic Intent

- Pink carries active states, focus, selected surfaces, and visual charm.
- Green carries support structure, troughs, inactive framing, and atmosphere.
- Dark plum-black carries depth, contrast, and the mochi-shell body of the interface.
- Cream and cyan-green support tones stay secondary and should not dominate the shell language.

## Surface Language

The shell should read as tinted glass over a dark lacquer base.

Rules:

- Panels should usually be dark and translucent, not fully opaque.
- Borders should be pink-tinted and partially transparent rather than loud solid outlines.
- A light green tint can be introduced inside panels to keep the palette dual-toned.
- Shadows should be soft and grounding, not sharp or theatrical.
- Surfaces should feel cushioned and rounded, not boxed in.

The ideal read is not "pink panel on black background."
The ideal read is "dark glass panel catching pink and green light."

## Border Language

Borders are one of the defining features of the theme.

The border style should be:

- soft
- sakura-tinted
- translucent
- rounded
- visible enough to define shape without turning into chrome

Preferred treatment:

- use pink borders at partial opacity for primary shell surfaces
- use green as a support or inactive border color, not the main frame everywhere
- avoid pure hard white borders
- avoid fully saturated solid pink borders unless the surface is intentionally highlighted

## Shape Language

Rounded corners are part of the identity.

The theme should prefer:

- medium rounding instead of extreme pill shapes
- consistent radius relationships across shell surfaces
- softer silhouettes for windows, panels, OSDs, and popovers

Rounding values should be chosen by role, not locked to one universal number.

The system should follow a proportional scale so related surfaces feel mathematically related rather than arbitrarily rounded.

Practical rule:

- use one base radius for the context
- derive nearby radii as simple multiples or near-multiples of that base such as `1x`, `1.25x`, `1.5x`, or `2x`
- larger containers should usually have larger radii than the controls they contain
- nested elements should usually step down in radius rather than matching the outer shell exactly
- pill shapes are allowed for progress bars, sliders, and chips when the component logic calls for it

Examples of good proportional relationships:

- a major shell can sit around `20-24px` while its internal fields and rows sit around `14-16px`
- a window shell can sit around `14px` while smaller child controls inherit lower values in the same ratio family

The rounding should feel soft and polished, not bubbly or toy-like.

## Motion Language

Motion should feel like soft drift through tinted glass.

Animation should be:

- smooth
- slightly buoyant
- calm on workspace changes
- more plush than snappy
- present, but not attention-seeking

Avoid:

- harsh mechanical easing
- exaggerated elastic bounce
- fast aggressive slides
- flashy border-angle spectacle as a default identity

The intended motion metaphor is mochi and lacquer, not chrome and machinery.

## Wallpaper Relationship

The wallpaper set is vivid, graphic, and high-contrast. Many images carry strong pink and green interplay with black depth.

That means the shell should not compete with the wallpapers by becoming louder than them.

Instead, the UI should:

- borrow the pink/green relationship
- simplify the values
- darken the base
- blur and soften what the wallpapers express more aggressively

The wallpaper can be loud.
The interface should be composed.

## Contrast Strategy

Readability matters, but this theme should not solve readability by flattening everything into hard high-contrast blocks.

Preferred strategy:

- dark base for legibility
- pale pink text on dark surfaces
- pink for key emphasis
- green for supporting structure
- translucent borders and shadows to separate layers

Do not overuse:

- full-opacity accent fills
- bright greens on large surfaces
- white text everywhere
- solid outlines when a translucent one will do

## Component Guidance

### Hyprland

- rounded windows
- soft translucent borders
- pink active border
- green inactive support border
- blur that preserves separation instead of color-smearing the wallpaper

### Waybar

- grouped dark glass modules
- pink border language
- subtle green interior tint
- restrained highlight usage

### SwayOSD

- dark floating glass panel
- pink frame
- green support in the icon or trough
- pink progress fill

### Notifications and Launchers

- same border logic as the rest of the shell
- same rounded silhouette
- same pink/green balance
- green should remain visible as a support cue in at least one structural element such as a tint, icon treatment, trough, hover edge, or internal frame
- no accidental fallback to flat monochrome boxes

## What To Preserve

When iterating on this theme, preserve these invariants:

- dark plum-black base
- pink and green both visible in the shell
- pink as the emotional lead
- green as the structural counterweight
- translucent sakura borders
- medium rounding
- soft glass depth
- calm plush animation

## What To Avoid

Avoid changes that push the theme into these directions:

- pure pastel kawaii
- pure neon cyberpunk
- sharp monochrome minimalism
- hard-edged industrial brutalism
- pink-only surfaces with no green balance
- green-only restraint that erases the theme's sweetness

## One-Sentence Test

If a new surface looks like black glass with pink blossom light and green support underneath, it belongs to Sakura Mochi.
