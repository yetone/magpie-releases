cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2303"
  sha256 arm:   "049b12df337ed58427fba360e1456a9771397d77c42b2ed88624118cf057243b",
         intel: "aee6e57db39ed3931e0495078678d250a22d303017642d8d8272c4fac5eef6b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
