# Data Licenses

This document tracks all open-source Bible texts, lexicons, and morphological data used in Dabar, along with their licenses and attribution requirements.

## Status: To Be Determined

Before adding any Bible text or lexicon data to this project, we must:

1. Identify specific open-source datasets
2. Verify their licenses permit free redistribution
3. Document attribution requirements
4. Ensure compatibility with GitHub Pages hosting and app store submissions

## Candidates Under Evaluation

### Hebrew Old Testament
- **Open Scriptures Hebrew Bible (OSHB)**
  - License: Creative Commons Attribution 4.0 International
  - URL: https://github.com/openscriptures/morphhb
  - Includes: Morphological tagging, Strong's numbers
  - Attribution: Required

### Greek New Testament
- **Berean Interlinear Bible / Berean Study Bible**
  - License: Public Domain (CC0 or similar - verify exact terms)
  - URL: https://berean.bible/
  - Includes: Interlinear Greek, Strong's tagging
  - Attribution: Requested but not required (verify)

- **STEPBible Data (Tyndale House)**
  - License: Creative Commons Attribution 4.0 International (verify exact version)
  - URL: https://github.com/STEPBible/STEPBible-Data
  - Includes: Tagged Greek/Hebrew with morphology
  - Attribution: Required

### SWORD Project Modules
- **Format**: OSIS/ThML-based modules
- **License**: Varies by module; many are public domain
- **URL**: https://crosswire.org/sword/modules/
- **Note**: Each module has its own license; must check individually

### Strong's Concordance
- **Content**: Public domain (original work is very old)
- **Digitization License**: Depends on specific dataset used
- **Candidates**:
  - OpenBible.info Strong's data (verify license)
  - Other open JSON/XML packages (TBD)

## Required Before Public Deployment

- [ ] Finalize data source selections
- [ ] Document exact license for each source
- [ ] Add in-app attribution screen
- [ ] Verify App Store / Play Store compliance
- [ ] Include license files in repository

## Notes

All data must:
- Be freely redistributable
- Allow commercial use (even though Dabar is free, app stores may classify it commercially)
- Be compatible with static hosting (GitHub Pages)
- Not require proprietary APIs or paywalled access
