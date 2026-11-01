class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2580/magpie-cli-darwin-arm64"
      sha256 "d98aec9e815e9c07e2210d89a2d1e9cb5f5f069365c8aa18ebc3fe5d025906a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2580/magpie-cli-darwin-amd64"
      sha256 "312a87303ae6129a4e3f69b107990a982a6414b0648522348d48387aca215644"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2580/magpie-cli-linux-arm64"
      sha256 "a62a21bf22f9a99abbd650d1ccdac42b3f579ad47a43356c044e7d60a74faa2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2580/magpie-cli-linux-amd64"
      sha256 "8481e6f9deca5436693875ae62488c160a20bf519b8b75a0145269c3192aa6e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
