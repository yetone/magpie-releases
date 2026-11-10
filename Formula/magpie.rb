class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3620/magpie-cli-darwin-arm64"
      sha256 "ea38b6521b1ba1e09b626f7139fe3896c5a2a9753c064137b159209f53b7f83a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3620/magpie-cli-darwin-amd64"
      sha256 "f2e1a421d1a34b1abe661b262114582cc1070b71dae97bec5cfefcb05a24dec3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3620/magpie-cli-linux-arm64"
      sha256 "04a742c6ae1cb17b396c08e31678233f32db122e2bab9dc0db6d76f9c7e1b236"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3620/magpie-cli-linux-amd64"
      sha256 "be64ffcf4f5167bff9fd9d22d7ce2b5236cb6030cfb187a273b316795e3cb82f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
