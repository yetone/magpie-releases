class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2806/magpie-cli-darwin-arm64"
      sha256 "d85cb4ec1200646c5cb261ce1c453901a23fc8cd8708a06fc734f4f035246f4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2806/magpie-cli-darwin-amd64"
      sha256 "e551d939c0e7a3f79647421bb717683a3bfe8271a33b0070e737c524be12a54a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2806/magpie-cli-linux-arm64"
      sha256 "4faf82251b8c12115ba005a2fe66ae98bb6df01b516279d0bdb1d050e9fc95cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2806/magpie-cli-linux-amd64"
      sha256 "3e8327c63c70c169382d5fdf9b8a337ec9eb479d5f5becfc92d48929a5779f39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
