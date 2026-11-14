cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4098"
  sha256 arm:   "4fb0d869525ad38dbaef75dcfec7bf18b4498ec6fa697d17468d44612720f90c",
         intel: "8dd8032ffb4876c999bdb480b8c0ba12114123df8a9c2a4f349f6e438aaa1a9d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
