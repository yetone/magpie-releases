cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1082"
  sha256 arm:   "499709ef351614b13fdc3524da4fc94a7f4b91adbe4cbcd211802a35ca27ef16",
         intel: "842e67602a5b46a607456cf5c7d39ecbcfde2cf7e907c247f7e3ff81317e56e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
