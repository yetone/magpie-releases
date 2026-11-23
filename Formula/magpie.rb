class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4709/magpie-cli-darwin-arm64"
      sha256 "e3148166260bdff486d0aa3dedbbf0777c1a083d9184b3b47e8cb5f231f1ac16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4709/magpie-cli-darwin-amd64"
      sha256 "71282ec4c6bc418ba85fd3d52d68c4bb3ce5c0ddb4f7f81129cc40e736930416"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4709/magpie-cli-linux-arm64"
      sha256 "4cf05077ea60fb3feaf31c452e1abebdfae22583bcb5e27c678ae7688b86ab86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4709/magpie-cli-linux-amd64"
      sha256 "e6bd8416808d7653c30c0e153b8fca8c0eaa28da49be7a24960068c277a87f0b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
