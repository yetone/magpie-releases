class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4796/magpie-cli-darwin-arm64"
      sha256 "7506d9fe5f2b1b468a7f01725628687e6bf5b72a49067d6701dba7ee07913d39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4796/magpie-cli-darwin-amd64"
      sha256 "ab869cc5060ae13e4d91c211d9449a93b195907a5a7d368d59c8a2eb6edaedf2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4796/magpie-cli-linux-arm64"
      sha256 "b44b6964bc175f90ed32f63094a24ba8af7877e024dc292fbba9432fe7a26b52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4796/magpie-cli-linux-amd64"
      sha256 "ea5a273fecf66d7328391758efee61ead1d5bf61910c25d30b4eba5f176c691d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
