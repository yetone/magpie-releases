cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2112"
  sha256 arm:   "e579ac544d560722ee3b25ebc35c19f421705e046eac75c7eb58580d376f6bc3",
         intel: "20a2fab92b3875919d341409f0d0df4021390dbaefb518dcb2bfd48e29ec33c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
