class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3992/magpie-cli-darwin-arm64"
      sha256 "a5bb77f6f1ecbc7eb66cc3b951ec4bcd263f7f5213fb7dbabfce7ca4c37b66f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3992/magpie-cli-darwin-amd64"
      sha256 "58ed7eae9d2a01fcbfd6a39813d68a3030d7c2d829fb35cfbf1e517e9b55b79e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3992/magpie-cli-linux-arm64"
      sha256 "d13ce867526c5ea7a9b5f3004c2ea3e22ed0b9150223e76d46bc0cee817ff231"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3992/magpie-cli-linux-amd64"
      sha256 "ec56812c673386ecf75e40b92d81fca006607ee894840d9c82c87c9b3c07b3dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
