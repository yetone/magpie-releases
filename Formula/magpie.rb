class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4985/magpie-cli-darwin-arm64"
      sha256 "bbdd6a40815411920f9009471ce9032e88b4f085d79cca46be63a3ea2e93b19d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4985/magpie-cli-darwin-amd64"
      sha256 "533efcabbe9500c77976439d7c7c74682564650b52ae28e267dffd68ff495c4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4985/magpie-cli-linux-arm64"
      sha256 "d23e870d16314d9605f6452d07d04b7e88799c92432d86bb31b3a143130783dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4985/magpie-cli-linux-amd64"
      sha256 "a5c2be492da9e9431523cd8ce5f3fc4a2a6fff382a7c3866a51e6988fa63a4af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
