class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4190/magpie-cli-darwin-arm64"
      sha256 "cf5f3dc2b9d6e22b9a17c729aa2f9bcf93a085a27df87dd5096621d083a32133"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4190/magpie-cli-darwin-amd64"
      sha256 "5acb922f99c64d2b7a16863fab4d95ae2033265b5fa08174269a1de213e33eeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4190/magpie-cli-linux-arm64"
      sha256 "632a50a5a092edc9ea5891817d7d5b853c0521b3b6e780eddeab1c512b2c78e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4190/magpie-cli-linux-amd64"
      sha256 "72b17f6fe0023bf16de626ec0419578c3326411c60af3fea100b40fd5ad3719c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
