cask "grpcmd-gui" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm:   "c94ac7cae8d804f0b3305dfb08bef4c4fe9857a2318d70f635cf5c476165cbec",
         intel: "6b1eecebfe23cc10b52ae53abdee0b5847d628571487c0ccc67fef4bf02ad164"

  url "https://github.com/grpcmd/grpcmd-gui/releases/download/v#{version}/grpcmd-gui_v#{version}_darwin-#{arch}-installer.dmg"
  name "grpcmd-gui"
  desc "GRPC GUI"
  homepage "https://github.com/grpcmd/grpcmd-gui"

  depends_on macos: ">= :catalina"

  app "grpcmd.app"

  zap trash: [
    "~/Library/Caches/md.grpc.gui",
    "~/Library/WebKit/md.grpc.gui",
  ]
end
