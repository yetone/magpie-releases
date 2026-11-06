cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3126"
  sha256 arm:   "851919c7e3a46d942c5ebd1e7051d452b835a2f34e66f546ca318359ad65f31f",
         intel: "82f92017725654e30073706edc30fadff61e857fb412d32b590641b49a41aa91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
