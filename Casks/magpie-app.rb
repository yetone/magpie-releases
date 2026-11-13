cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4093"
  sha256 arm:   "fd5fefe3dbce1749c81ae0f1ab2545d192a005b06745f46a4de452d1ab349741",
         intel: "1678680868b0bb46e33998fc1883cfa5bb7d296bb80268ea1c1b2c910c45417d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
