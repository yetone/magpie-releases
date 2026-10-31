class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2365/magpie-cli-darwin-arm64"
      sha256 "ca8ae9f0ba33fbef391c4a67eb9beb7c3844020d47fbac31edd0d750ed8f2791"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2365/magpie-cli-darwin-amd64"
      sha256 "52eba275c06b6637a29bdc56434aae10d5123f07e8add4562260ea6192f03804"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2365/magpie-cli-linux-arm64"
      sha256 "345cadb18f7a0deca6e6b88ef494809671834ea411e216ae282947b9f51870b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2365/magpie-cli-linux-amd64"
      sha256 "9abff3fd2b0b291d70e6a57ef670b418b3bf1520219c32d1975f359e3b15f824"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
