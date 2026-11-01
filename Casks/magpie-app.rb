cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2522"
  sha256 arm:   "ff2be44700ab6c32f7d9829963994aa88ecae9f10ce3174e4a140e34b8ad2e71",
         intel: "d33cbfa3f70758e32a2cd7f795fb980c1bd05c5c3ec9f14616dc8ff0f6e811d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
