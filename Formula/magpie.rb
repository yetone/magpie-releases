class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4682/magpie-cli-darwin-arm64"
      sha256 "db4aba40fe72288fa245bb4e410637498a9fe1352f7fcd3e027fcee34b809a3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4682/magpie-cli-darwin-amd64"
      sha256 "4784c19d8593dce37da9c3f856d5b027b2d7aab062cc3177aac67d5b74ee61dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4682/magpie-cli-linux-arm64"
      sha256 "5a6b516026a36d955ef025adb7d57d8ff77e4846fbdf5174431b3afd93b826d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4682/magpie-cli-linux-amd64"
      sha256 "59ba86a9b132e1fe49110c7343dd40796722d77507e268b22d4b28a9bde23f13"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
