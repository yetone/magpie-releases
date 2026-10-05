cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1043"
  sha256 arm:   "ccf0029a744c25aae9703ee4133bd038370b3178ee406c45e7f9cdbfdeffd873",
         intel: "8fd258b22cd27efd1198039184cd091aee299c39085cd8891226551319dd4161"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
