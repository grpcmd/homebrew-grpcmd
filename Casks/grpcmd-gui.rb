cask "grpcmd-gui" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.0"
  sha256 arm:   "adc98ed3e2f1395b1575c63dfd0b4527b1a21c4d2442e6290b9f72d2d4e6aee2",
         intel: "957d424edfd661c82515f81d7e99bba28f02e24040bb26e57737c036cc78c583"

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
