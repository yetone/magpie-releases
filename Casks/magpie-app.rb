cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2466"
  sha256 arm:   "bdfd72fc9c7c445d9f21ccb84b2dd7e7fbad479a8c216edc4d1ab9238a332847",
         intel: "161c5764754a5bbf35407c7bf0d3ab37cd770d5c74434a640c4b1fdb886090e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
