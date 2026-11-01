class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2620/magpie-cli-darwin-arm64"
      sha256 "57bed0738852db5a0f6d6c76d988b72349d47a589ca65f5c5f512afd036dad6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2620/magpie-cli-darwin-amd64"
      sha256 "f0d3947752b4eaa3c10cbeff0972d37481a203874ab3ad9ec771a8fa46f24746"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2620/magpie-cli-linux-arm64"
      sha256 "b1536434e4bfadecc2cecaf1c77eeafbb48c3b01cfcb870ffab55bc97eb70290"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2620/magpie-cli-linux-amd64"
      sha256 "70d48727fe04fd60df2a8aa15b859ee6c352f6a75165b4aeb983cca3ef2b7285"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
