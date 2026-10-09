class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1144/magpie-cli-darwin-arm64"
      sha256 "2cd1c062b753ec87ec8cc8525f1aa5ce9aa79dba1ceb456d14e8f10a0b897b44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1144/magpie-cli-darwin-amd64"
      sha256 "95ba8c549f778650b517abfc93ee38a159f82a6b503221314e69e5be80612548"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1144/magpie-cli-linux-arm64"
      sha256 "38f5a0cb3cf5b9675beb392a7a1b7c0816cdf0df1dc9d8a1ce27b8ae16a53a24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1144/magpie-cli-linux-amd64"
      sha256 "fbc3200e95108e251c4f1a66d681d02a1d68421013f05cffd317be6d9d4a61c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
