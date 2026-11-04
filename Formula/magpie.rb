class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2948/magpie-cli-darwin-arm64"
      sha256 "2d7b6acc2a41dbc5015e0547292e8cc5c3c3d98e31d03303bbd37961414ba162"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2948/magpie-cli-darwin-amd64"
      sha256 "c764aebbab96aa1bfb1e8e968a7cde549a2300a5040b10e392020096143cf5d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2948/magpie-cli-linux-arm64"
      sha256 "08174d2e89dad1bb62a3cda633795f1c8e28ac9b8bdd3a08eb26434112577ca0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2948/magpie-cli-linux-amd64"
      sha256 "3fc94b823fc783b6929486e0aa2699a4f54154faffc26d251bc3cc9cb967b5c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
