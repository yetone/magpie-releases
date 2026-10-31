class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2305/magpie-cli-darwin-arm64"
      sha256 "441c2fd5e4c2e827d505808feb4e1d7998414b272acc47ea105bab0e9b3c1c8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2305/magpie-cli-darwin-amd64"
      sha256 "f2f249d43c36c189f2e091427d823c1ee9bb7f1349d28a3403c278c39c4a0501"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2305/magpie-cli-linux-arm64"
      sha256 "a1b216116efacc4bfa633a7a6734b2d4d5faf91d2d4937196a67038a7e810898"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2305/magpie-cli-linux-amd64"
      sha256 "8c8526328a501429407843fef6f07fa351875da82ebe1969e5a331b411b6c781"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
