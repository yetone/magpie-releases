class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3044/magpie-cli-darwin-arm64"
      sha256 "9e582289266b60ac14dc1b3076bb642538eeaf062c44e0647b2244328ec503f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3044/magpie-cli-darwin-amd64"
      sha256 "82580298dd51987b606929c6be6cc6b151c929374ee2dac5ace217df18c9800f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3044/magpie-cli-linux-arm64"
      sha256 "615ae80342b9310208a064e0d45ab315b0f1b21e0edba93e56ff64ed0d249731"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3044/magpie-cli-linux-amd64"
      sha256 "16edf4298f09c5b07bbe8104db432e6657f9547b67e30da4c6d6e714af6290a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
