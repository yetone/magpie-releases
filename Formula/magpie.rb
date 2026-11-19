class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4509/magpie-cli-darwin-arm64"
      sha256 "9a443db1a47f6a4ca35a4a1cdb2986448bac5198c245ccb60b9000096d5c82cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4509/magpie-cli-darwin-amd64"
      sha256 "145dba0f331b35bd86d45a414dfa5f5a22cacaf901a2eaf9e24e70e50cef4743"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4509/magpie-cli-linux-arm64"
      sha256 "daf6936f611cbdf2fc73e2ea8f432f482e2601a018c6580368a54518eaa32d23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4509/magpie-cli-linux-amd64"
      sha256 "4d2e3458081fdf15720c6e4262a8b8ba0cb31e5859fb152a47d1b75f6bebf836"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
