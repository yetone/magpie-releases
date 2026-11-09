class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3358/magpie-cli-darwin-arm64"
      sha256 "9ca0e312d5a6591c44ce920ee9320231d563f51df2127a4335fef6c2c73f2c85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3358/magpie-cli-darwin-amd64"
      sha256 "a4a1d538006249548de1fe19cfd5ff870254bff73f31a7d88c493f221e009f19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3358/magpie-cli-linux-arm64"
      sha256 "0dc2fe9706fe2aefee032a65bea70c0a7d5d9dfa79b7f1874030b9bccfbf9dec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3358/magpie-cli-linux-amd64"
      sha256 "644e6d653c514bbdf46e76e1f08937bd45dd574be8fac433afd52c9642a8096f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
