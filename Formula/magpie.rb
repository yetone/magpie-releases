class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3603/magpie-cli-darwin-arm64"
      sha256 "fa4369db47cbb898f9578f6cfc33d5ca482c1f75a81504ab34c61c465b3a9241"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3603/magpie-cli-darwin-amd64"
      sha256 "1e65fca7c0851991e6bde1fc712a41b9c5b8aeb657758c16100b5a3f8b2e24eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3603/magpie-cli-linux-arm64"
      sha256 "45f38abeef7848203966d88b33c1f9ce33efac5b24ec3a63fe7139f46c898f40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3603/magpie-cli-linux-amd64"
      sha256 "02d54016a596c0676c82db48ae5a38bcf6f5b11373cf86fad0398d1c460b64ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
