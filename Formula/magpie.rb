class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4649/magpie-cli-darwin-arm64"
      sha256 "a8ca3cc906068429c272a94cc8575305d4d3604b6b01e9ef6ff2445d07afd1b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4649/magpie-cli-darwin-amd64"
      sha256 "22d0e793a2fb1013ce2694c178ba5f1cb1c7de8f1454c33aa8669a8c7ccdab4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4649/magpie-cli-linux-arm64"
      sha256 "81dc49b66d332ace00b70d1fdd88d855ea930b359f2a17ed2e099363a8b27088"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4649/magpie-cli-linux-amd64"
      sha256 "e954a92c847c4878c1e1effd0bb72c92de807f47f4f181556d280c6147b14001"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
