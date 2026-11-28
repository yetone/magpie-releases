cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5002"
  sha256 arm:   "ed764ee5a7309f342e6c4fe4738179e0d4a70ee262157cd85c5547f0d0517f52",
         intel: "0e3be0727890b1e99671c5f41a3e178626837bf48dba3292b55991e756e8e129"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
