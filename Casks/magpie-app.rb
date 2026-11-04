cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2994"
  sha256 arm:   "10c515909feb659daf10a5cd8bce0bab6db043c804741d86d837212d537749a1",
         intel: "6dcc9d17a5863de6d506e4faf5559b57e94d40c921b1ad62842de364331dc43a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
