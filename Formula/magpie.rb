class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1946/magpie-cli-darwin-arm64"
      sha256 "502a1e2ab18e14a687a5c4a5b1a284cf1ee18ab5015d62de0451e34445b6ce16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1946/magpie-cli-darwin-amd64"
      sha256 "46527a0c46b0311bbf4a7082ad6f5e6aecfb63e387b5345320b3360e7019021e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1946/magpie-cli-linux-arm64"
      sha256 "822c946a450602b1d338636730e56cece48775a8d91849dbea8383317b83ef7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1946/magpie-cli-linux-amd64"
      sha256 "88b85efdd4e20daa83bfeb6f98484e0e639710d1520633fa60c23e5087ed4466"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
