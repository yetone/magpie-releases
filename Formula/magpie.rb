class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2332/magpie-cli-darwin-arm64"
      sha256 "0608237858a9463a49a64f64cd1ed2fc12abb84ff433f741cba4bcee5e22d0fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2332/magpie-cli-darwin-amd64"
      sha256 "42483bf84a2b5d20842cff62cb4da91f8af28c96d3b3d1c185f6bc7a71df4afa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2332/magpie-cli-linux-arm64"
      sha256 "4f1b907f996e72b6281a6bb1031c425a8c7f4fadb9dae7e6f20928fd6ff52612"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2332/magpie-cli-linux-amd64"
      sha256 "729c48bb75cfe8a9b4f0f46f4a76d25916f5664439e51279f4e63970b4e5066e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
