class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2898/magpie-cli-darwin-arm64"
      sha256 "5b67f353c4a0a4b57bf3505ffd08cb27befa3bc17f8d64ccf915cb710b368d81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2898/magpie-cli-darwin-amd64"
      sha256 "be588f319c63a8cb6cb96543d40b895367ed919a0cc0055a1c80f5f07535b8f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2898/magpie-cli-linux-arm64"
      sha256 "79f4cb15adb288b70bcf59a325bb078b5a0f5639180313f8b58db319001a0e48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2898/magpie-cli-linux-amd64"
      sha256 "05c6f58805387adc2fd25d6eed8c78e84fbb825f740faaa5a7d7964dc4614dce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
