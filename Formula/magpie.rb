class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1999/magpie-cli-darwin-arm64"
      sha256 "d9797cfee3926a42e9342a4fdbd161656e0fb992757b3dc7638b27d5ce55ee92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1999/magpie-cli-darwin-amd64"
      sha256 "71fc100bf01524bce7fa9921d01d4154fcb19c917f582d39f5c88b1ed49354fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1999/magpie-cli-linux-arm64"
      sha256 "13e56e473b1494db7c758aeb5c326b6cd0145fe7abcf8bf178b650b07f681c7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1999/magpie-cli-linux-amd64"
      sha256 "598222e9f40edd6a9751456ef78a6ec5485340a184fcfeabb62625c67afb41fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
