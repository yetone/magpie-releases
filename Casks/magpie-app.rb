cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2029"
  sha256 arm:   "00241b454dd842d6ef31058625768c9bf6a673550c5f5aa8893c246d5779fcb1",
         intel: "f3336ed838d57ec4d44c3099fb488a3aeb28d542b9737a9cdba4c6bbcf074c3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
