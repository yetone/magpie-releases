class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2135/magpie-cli-darwin-arm64"
      sha256 "085f44843cf6f16404c136daeca118daf872e2cfee371cdc959449c36103c7b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2135/magpie-cli-darwin-amd64"
      sha256 "273f5ec23cd4c328bc306395e11af410b853754da4df73fe3d80140b3819a1c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2135/magpie-cli-linux-arm64"
      sha256 "e352f239a2dbae6c891230811c7a5126f6c5b710e46170834a0b85c76e91a89d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2135/magpie-cli-linux-amd64"
      sha256 "ded4263192e870b49e8ba64a152fc22000907dbe2a94e4598eb32a4b4262fc86"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
