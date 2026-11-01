class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2568/magpie-cli-darwin-arm64"
      sha256 "73ef2c75fb26ad3e53b3d6b087ff919e640f8e985562269e8d010067e0d18a95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2568/magpie-cli-darwin-amd64"
      sha256 "81d8c9453f19f7ecb84f3f3e96b1d7fb954a3da1a79c1135f7c81460ac4257cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2568/magpie-cli-linux-arm64"
      sha256 "06577334a2229929734a4655bd26addc640103584a0f1e882a5ba53cc24cdea6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2568/magpie-cli-linux-amd64"
      sha256 "8468551766a0dfc4e19758c56098524bce2ac00f5caf5f18642f391266375b53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
