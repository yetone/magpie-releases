class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2304/magpie-cli-darwin-arm64"
      sha256 "28bd04e8a29b91fdf75f79baaedda88dff618b7f019b4b33df4ecf395a98be82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2304/magpie-cli-darwin-amd64"
      sha256 "2635439af67e1f0bb6443829c2edaba36115daa4bea6ff58db932d25f971622d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2304/magpie-cli-linux-arm64"
      sha256 "97ae6cfbe66643974fe84bc700eb5bb42e2138d17346ccf1b29fb6dcf6bfca8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2304/magpie-cli-linux-amd64"
      sha256 "830f554ba27a28f6d7ec2c5f2d49f674d4c7111c9e315da7508c94e68b52a9cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
