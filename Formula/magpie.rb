class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2364/magpie-cli-darwin-arm64"
      sha256 "5e72316b552742960b4fd1e77c27ded4cbd35c289c42ff963ff8c43ae1309c3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2364/magpie-cli-darwin-amd64"
      sha256 "3a9c1aa0c34f3a2f672001a7609644bc0567b48513e6f63299e77c459dc27f5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2364/magpie-cli-linux-arm64"
      sha256 "63473fe02581cf550988d0c54cff3b0fa394c2f26e8473043274a4d153e45644"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2364/magpie-cli-linux-amd64"
      sha256 "df1fd40249d1065eba220b092c35ddd4d565c75a1b0b8661563ed9bf573aa96c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
