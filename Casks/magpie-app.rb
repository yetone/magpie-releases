cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4229"
  sha256 arm:   "9212cecf4dd62a31f89ce96c1a633ac941ef20e3fb306005e24d7fb1fc859b10",
         intel: "60ff62fdff6ca1a9ed1f5bfce940d60334c16dddbd1a279caeb87aec5bad9d75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
