class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1011/magpie-cli-darwin-arm64"
      sha256 "9ce8b8331cfeee55ec20e52d18f2ab03f8e99c91498be0427770d96cecad8850"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1011/magpie-cli-darwin-amd64"
      sha256 "d7878c69b3c435749573f34aa398fa8849fe58e0708f1c3ee6d6928eb999f249"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1011/magpie-cli-linux-arm64"
      sha256 "d28738145a8cfb6a544995989f9397056db6da415981dd009a16cb86e2581036"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1011/magpie-cli-linux-amd64"
      sha256 "a17f2d872379828fb83273835e4703507ae733e51da8231bcf0489404e3b7215"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
