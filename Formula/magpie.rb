class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4901/magpie-cli-darwin-arm64"
      sha256 "5bf0b2b076eb23ee0e14b97193b15b52899b8d0bfd8da27882d19a795cf082b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4901/magpie-cli-darwin-amd64"
      sha256 "6ec2af678ab6cd1d5cd1127f74c3932b88287b03bd90e174f835cfed7720d21a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4901/magpie-cli-linux-arm64"
      sha256 "7ccca36fd7ee055afba64511b60927702cb58b44de87e52b367468d2e7b652e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4901/magpie-cli-linux-amd64"
      sha256 "1941fb8b915dd5c89588f2932916f2db654c2c0c593c965ec0239d627f5bb0ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
