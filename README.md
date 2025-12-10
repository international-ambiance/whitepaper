# IA-Token Whitepaper

Official whitepaper for IA-Token - A community-driven meme token for global culture, events, and collective action.

## About

IA-Token is a meme/community token that serves as a membership card to a global movement of culture enthusiasts and change-makers. This whitepaper outlines:

- **Community Benefits**: Access to global music festivals and cultural events
- **Governance**: Decentralized community decision-making with quadratic voting
- **Cultural Access**: Priority tickets to Coachella, Tomorrowland, Glastonbury, and more
- **Collective Impact**: Fund grassroots projects and support artists directly

### Important Notice

**This is NOT an investment.** IA-Token is a utility/meme token with ZERO expectation of financial gain. The token has no intrinsic value and should only be acquired for community participation, governance, and event access.

## Token Information

- **Contract Address**: `0xe65c6a4eA43e45e69AA507d683b3468833FD07F2`
- **Blockchain**: Ethereum (L1) + Base (L2)
- **Standard**: ERC-20
- **Total Supply**: 1,000,000,000 IA (fixed)
- **Etherscan**: [View on Etherscan](https://etherscan.io/token/0xe65c6a4eA43e45e69AA507d683b3468833FD07F2)

## Download

The latest compiled PDF is available in the [Releases](../../releases) section.

## Building Locally

### Prerequisites

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- `pdflatex` command available in PATH

### Build Instructions

```bash
# Clone the repository
git clone https://github.com/international-ambiance/whitepaper.git
cd whitepaper

# Build the PDF (run twice for proper TOC generation)
pdflatex ia-token-whitepaper.tex
pdflatex ia-token-whitepaper.tex
```

The compiled PDF will be `ia-token-whitepaper.pdf`.

### Using Docker

If you don't have LaTeX installed locally:

```bash
docker run --rm -v $(pwd):/data texlive/texlive:latest pdflatex -output-directory=/data /data/ia-token-whitepaper.tex
docker run --rm -v $(pwd):/data texlive/texlive:latest pdflatex -output-directory=/data /data/ia-token-whitepaper.tex
```

## Continuous Integration

This repository uses GitHub Actions to automatically build the PDF on every push to `main` and on tags. The workflow:

1. Checks out the repository
2. Compiles the LaTeX source using `pdflatex`
3. Uploads the PDF as a build artifact
4. Creates a GitHub Release (on version tags)

### Triggering a Release

To create a new release with the PDF:

```bash
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0
```

The GitHub Action will automatically build the PDF and create a release with it attached.

## Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── build-pdf.yml          # GitHub Actions workflow
├── ia-token-whitepaper.tex        # LaTeX source file
└── README.md                      # This file
```

## Contributing

This is a private repository for the IA-Token community. If you have suggestions or improvements:

1. Create a branch
2. Make your changes to the `.tex` file
3. Submit a pull request
4. The PDF will be automatically built in CI

## License

© 2025 International Ambiance. All rights reserved.

This whitepaper is proprietary and confidential. Distribution is limited to community members and authorized parties only.

## Contact

- Website: https://ia-token.org
- Discord: https://discord.gg/ia-token
- Twitter: @IAToken
- Email: hello@ia-token.org

---

**Disclaimer**: This whitepaper is for informational purposes only and does not constitute financial, investment, legal, or tax advice. IA-Token makes no guarantees regarding token value, event access, or any other benefits. Cryptocurrency tokens carry significant risk. Consult professionals before making any financial decisions.
