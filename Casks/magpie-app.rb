cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3732"
  sha256 arm:   "e02a6480f4874d109c8c8862fe0ea46fd82d2009f0e686139f854fc3d416b305",
         intel: "ec33c38a10cf52fc751e938c40255d8aa2b90933f07afd87eaa899bb6f7ced70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
