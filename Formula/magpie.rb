class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2301/magpie-cli-darwin-arm64"
      sha256 "6895b32a4d65b4466e90f8d2541ff5c56f040629ee5643cfe743ec230d45d7cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2301/magpie-cli-darwin-amd64"
      sha256 "6ad12d6ad4d1ae9fc2dab2982f72b3da3e1fefb7fc850d1dce53b40b7bc9a0e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2301/magpie-cli-linux-arm64"
      sha256 "9ecf423823787833b380d89582847b41bbaef70b15a05c55872c5909d73ef7a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2301/magpie-cli-linux-amd64"
      sha256 "99fb268ef471340e8760d1b0eece5801a435a32153a2c6c42ea8ea9dbe7258d8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
