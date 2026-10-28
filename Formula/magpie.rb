class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1852/magpie-cli-darwin-arm64"
      sha256 "5d2e2dc32600fe117df0f2a21e52da54047f88ea8df7066a47ecae1bb5dbf1cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1852/magpie-cli-darwin-amd64"
      sha256 "a339a5671397cf1fa4f87c3f913404d04365ef4180ee4272ed80009186ce6e6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1852/magpie-cli-linux-arm64"
      sha256 "6ed14df5253145020fe278d52d138deacce9f87e0dbb88366cc7864e7b32d8ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1852/magpie-cli-linux-amd64"
      sha256 "108663bf8fbdd652b632a56d01d150b37dedd173a3713ef317325ad107b2086f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
