class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1939/magpie-cli-darwin-arm64"
      sha256 "192e4c6b1e16ed2fe514ab2a0d94a875785054b6e7cea1f38ce527418ca7829f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1939/magpie-cli-darwin-amd64"
      sha256 "47b2f724c8e6a85924fa6c0d7fa22d6f43bd188031efdaab321fbf22edea04e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1939/magpie-cli-linux-arm64"
      sha256 "ff2e7c7df1feb9778888e7a33fe80b7c04a279bda1b17160baff6a8ec0c1b949"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1939/magpie-cli-linux-amd64"
      sha256 "795ecf9d9f95633e055a2d7108c87bca045dbb4c759059039442ef4cef779053"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
