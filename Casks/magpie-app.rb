cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3468"
  sha256 arm:   "1ec9b7ba3d5519e3c357f71eae8437c2c64c1063d72e8a6799e258e950a8000b",
         intel: "aa6a17faf995b4fa0c56a50df99f1c571ee48954f7f2f13bb44bd2289a2db890"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
